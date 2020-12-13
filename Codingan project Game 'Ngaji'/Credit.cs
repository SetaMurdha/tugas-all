using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Credit : MonoBehaviour
{

    public GameObject CreditPanel;

    public void openCredit()
    {

        CreditPanel.SetActive(true);

    }
    public void closeCredit()
    {
        CreditPanel.SetActive(false);

    }
}
