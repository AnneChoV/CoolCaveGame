using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneChanger : MonoBehaviour
{
    SoundManager soundManager;
    GameState gameState;

    private void Start()
    {
        soundManager = FindObjectOfType<SoundManager>();
        gameState = FindObjectOfType<GameState>();
    }

    IEnumerator Fading()
    {
        float fadeTime = GameObject.Find("Game Manager").GetComponent<Fader>().BeginFade(1);
        yield return new WaitForSeconds(fadeTime);
    }


    public void SceneLoad(string SceneName)
    {
        Fading();
        SceneManager.LoadScene(SceneName);
        soundManager.playTheme(SceneName);
    }

    public void restartScene()
    {
        Scene scene = SceneManager.GetActiveScene();
        SceneManager.LoadScene(scene.name);
    }

    public void ContinueButton()
    {
        //soundManager.ButtonClick();
        gameState.ContinueGame();
    }

    public void NewButton()
    {
        PlayerPrefs.DeleteAll();
        SceneLoad("IntroScene");
    }

    public void LoadButton()
    {

    }

    public void OptionsButton()
    {

    }

    public void ExitButton()
    {
        Application.Quit();
    }
}
