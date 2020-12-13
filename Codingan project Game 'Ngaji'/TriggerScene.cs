using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class TriggerScene : MonoBehaviour
{
    public GameObject WinOrLose;

    private void Start()
    {
        Time.timeScale = 1f;
    }

    private void OnTriggerEnter(Collider other)
    {
        WinOrLose.SetActive(true);
        Time.timeScale = 0f;
    }
}
