//*****************************************************
//
// �W���C�p�b�h���͏���[inputjoypad.cpp]
// Author:���R����
//
//*****************************************************

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "inputjoypad.h"

//====================================================
// �R���X�g���N�^
//====================================================
CInputJoypad::CInputJoypad()
{
	ZeroMemory(&m_aState, sizeof(m_aState));
	ZeroMemory(&m_aStateRelease, sizeof(m_aStateRelease));
	ZeroMemory(&m_aStateTrigger, sizeof(m_aStateTrigger));
	ZeroMemory(&m_aStateRepeat, sizeof(m_aStateRepeat));
	ZeroMemory(&m_aVibration, sizeof(m_aVibration));
	ZeroMemory(&m_aVibState,sizeof(m_aVibState));

	m_nVibTimer = 0;
}

//====================================================
// �f�X�g���N�^
//====================================================
CInputJoypad::~CInputJoypad()
{

}

//====================================================
// ����������
//====================================================
HRESULT CInputJoypad::Init(void)
{
	//xinput��L��������
	XInputEnable(true);

	//�������̃N���A
	for (int nCount = 0; nCount < MAX_PLAYER; nCount++)
	{
		memset(&m_aState[nCount], 0, sizeof(XINPUT_STATE));
		memset(&m_aVibration[nCount], 0, sizeof(XINPUT_VIBRATION));
		memset(&m_aStateTrigger[nCount], 0, sizeof(XINPUT_STATE));
		memset(&m_aVibState[nCount], 0, sizeof(PADVIB));
	}

	return S_OK;
}

//====================================================
// �I������
//====================================================
void CInputJoypad::Uninit(void)
{
	//xinput�𖳌�������
	XInputEnable(false);
}

//====================================================
// �X�V����
//====================================================
void CInputJoypad::Update(void)
{
	//�ϐ��錾
	XINPUT_STATE aState[MAX_PLAYER];
	int nCntKey;

	for (nCntKey = 0; nCntKey < MAX_PLAYER; nCntKey++)
	{
		if (m_nVibTimer > 0)
		{
			m_nVibTimer--;
		}
		else if (m_nVibTimer <= 0)
		{
			memset(&m_aVibState[nCntKey], 0, sizeof(PADVIB));
			m_aVibration[nCntKey].wLeftMotorSpeed = 0;
			m_aVibration[nCntKey].wRightMotorSpeed = 0;
			//�U����Ԃ�`�B
			XInputSetState(nCntKey, &m_aVibration[nCntKey]);
			m_nVibTimer = 0;
		}

		if (m_aVibration[nCntKey].wLeftMotorSpeed < 0 ||
			m_aVibration[nCntKey].wRightMotorSpeed < 0)
		{
			m_aVibration[nCntKey].wLeftMotorSpeed = 0;
			m_aVibration[nCntKey].wRightMotorSpeed = 0;
			//�U����Ԃ�`�B
			XInputSetState(nCntKey, &m_aVibration[nCntKey]);
		}
		//���̓f�o�C�X����f�[�^���擾
		if (XInputGetState(nCntKey, &aState[nCntKey]) == ERROR_SUCCESS)
		{
			for (nCntKey = 0; nCntKey < MAX_PLAYER; nCntKey++)
			{
				//�g���K�[
				m_aStateTrigger[nCntKey].Gamepad.wButtons =
					(m_aState[nCntKey].Gamepad.wButtons ^ aState[nCntKey].Gamepad.wButtons)
					& aState[nCntKey].Gamepad.wButtons;

				//�����[�X
				m_aStateRelease[nCntKey].Gamepad.wButtons =
					(m_aState[nCntKey].Gamepad.wButtons ^ aState[nCntKey].Gamepad.wButtons)
					& m_aState[nCntKey].Gamepad.wButtons;

				//���s�[�g
				m_aStateRepeat[nCntKey].Gamepad.wButtons =
					(m_aState[nCntKey].Gamepad.wButtons & aState[nCntKey].Gamepad.wButtons);

				//�v���X
				m_aState[nCntKey] = aState[nCntKey];
			}
		}
	}
}

//====================================================
// �W���C�X�e�B�b�N���擾
//====================================================
float CInputJoypad::GetJoyStickLX(int nPlayer)
{
	//����Ԃ�
	return (float)m_aState[nPlayer].Gamepad.sThumbLX / USHRT_MAX * 2;
}

//====================================================
// �W���C�X�e�B�b�N���擾
//====================================================
float CInputJoypad::GetJoyStickLY(int nPlayer)
{
	//����Ԃ�
	return (float)m_aState[nPlayer].Gamepad.sThumbLY / USHRT_MAX * 2;
}

//====================================================
// �W���C�X�e�B�b�N���擾
//====================================================
float CInputJoypad::GetJoyStickRX(int nPlayer)
{
	//����Ԃ�
	return (float)m_aState[nPlayer].Gamepad.sThumbRX / USHRT_MAX * 2;
}

//====================================================
// �W���C�X�e�B�b�N���擾
//====================================================
float CInputJoypad::GetJoyStickRY(int nPlayer)
{
	//����Ԃ�
	return (float)m_aState[nPlayer].Gamepad.sThumbRY / USHRT_MAX * 2;
}

//====================================================
// �W���C�X�e�B�b�N�ړ��ʎ擾�iL�j
//====================================================
D3DXVECTOR3 CInputJoypad::GetVecStickL(void)
{
	float fAngle = atan2f(GetJoyStickLX(0), GetJoyStickLY(0));
	float fLength = sqrtf(GetJoyStickLX(0) * GetJoyStickLX(0) + GetJoyStickLY(0) * GetJoyStickLY(0));

	D3DXVECTOR3 vec =
	{
		sinf(fAngle) * fLength,
		cosf(fAngle) * fLength,
		0.0f
	};

	return vec;
}

//====================================================
// �v���X���擾
//====================================================
bool CInputJoypad::GetPress(PADBUTTOS nKey, int nPlayer)
{
	//�O�����Z�q
	return(m_aState[nPlayer].Gamepad.wButtons & (0x01 << nKey)) ? true : false;
}

//====================================================
//�g���K�[���擾
//====================================================
bool CInputJoypad::GetTrigger(PADBUTTOS nKey, int nPlayer)
{
	//�O�����Z�q
	return(m_aStateTrigger[nPlayer].Gamepad.wButtons & (0x01 << nKey)) ? true : false;
}

//====================================================
//�����[�X���擾
//====================================================
bool CInputJoypad::GetRelease(PADBUTTOS nKey, int nPlayer)
{
	//�O�����Z�q
	return(m_aStateRelease[nPlayer].Gamepad.wButtons & (0x01 << nKey)) ? true : false;
}

//====================================================
//���s�[�g���擾
//====================================================
bool CInputJoypad::GetRepeat(PADBUTTOS nKey, int nPlayer)
{
	//�O�����Z�q
	return(m_aStateRepeat[nPlayer].Gamepad.wButtons & (0x01 << nKey)) ? true : false;
}

//====================================================
// �o�C�u���ݒ�
//====================================================
void CInputJoypad::Vibration(int nPlayer, PADVIB state, short sVib,int nTime)
{
	switch (state)
	{
	case PADVIB_USE:
		m_aVibration[nPlayer].wLeftMotorSpeed = sVib;
		m_aVibration[nPlayer].wRightMotorSpeed = sVib;
		m_aVibState[nPlayer] = state;
		break;
	default:
		break;
	}

	m_nVibTimer = nTime;

	//�U����Ԃ�`�B
	XInputSetState(nPlayer, &m_aVibration[nPlayer]);
}
