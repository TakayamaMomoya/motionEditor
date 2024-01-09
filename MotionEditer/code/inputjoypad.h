//*****************************************************
//
// �W���C�p�b�h���͏���[inputjoypad.h]
// Author:���R����
//
//*****************************************************

#ifndef _INPUTJOYPAD_H_
#define _INPUTJOYPAD_H_

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "input.h"

//*****************************************************
// �}�N����`
//*****************************************************
#define MAX_PLAYER	(4)	// �v���C���[�̍ő吔

//*****************************************************
// �N���X�̒�`
//*****************************************************
class CInputJoypad
{
public:
	//�Q�[���p�b�h�{�^��
	typedef enum
	{
		PADBUTTONS_UP = 0,				//�Q�[���p�b�h�̃{�^��
		PADBUTTONS_DOWN,
		PADBUTTONS_LEFT,
		PADBUTTONS_RIGHT,
		PADBUTTONS_START,
		PADBUTTONS_BACK,
		PADBUTTONS_LSTICK,
		PADBUTTONS_RSTICK,
		PADBUTTONS_LB,
		PADBUTTONS_RB,
		PADBUTTONS_UNKNOWN,
		PADBUTTONS_UNKNOWN2,
		PADBUTTONS_A,
		PADBUTTONS_B,
		PADBUTTONS_X,
		PADBUTTONS_Y,
		PADBUTTONS_MAX
	}PADBUTTOS;

	//�o�C�u���[�V�����̏��
	typedef enum
	{
		PADVIB_NONE = 0,						//�g�p���Ă��Ȃ����
		PADVIB_USE,								//�g�p���Ă�����
		PADVIB_MAX
	}PADVIB;

	CInputJoypad();	// �R���X�g���N�^
	~CInputJoypad();	// �f�X�g���N�^

	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	bool GetPress(PADBUTTOS nKey, int nPlayer);
	bool GetTrigger(PADBUTTOS nKey, int nPlayer);
	bool GetRelease(PADBUTTOS nKey, int nPlayer);
	bool GetRepeat(PADBUTTOS nKey, int nPlayer);
	float GetJoyStickLX(int nPlayer);
	float GetJoyStickLY(int nPlayer);
	float GetJoyStickRX(int nPlayer);
	float GetJoyStickRY(int nPlayer);
	D3DXVECTOR3 GetVecStickL(void);
	void Vibration(int nPlayer, PADVIB state, short sVib, int nTime);

private:
	XINPUT_STATE m_aState[MAX_PLAYER];				//�Q�[���p�b�h�̃v���X���
	XINPUT_STATE m_aStateTrigger[MAX_PLAYER];		//�Q�[���p�b�h�̃g���K�[���
	XINPUT_STATE m_aStateRelease[MAX_PLAYER];		//�Q�[���p�b�h�̃����[�X���
	XINPUT_STATE m_aStateRepeat[MAX_PLAYER];			//�Q�[���p�b�h�̃��s�[�g���
	XINPUT_VIBRATION m_aVibration[MAX_PLAYER];		//�Q�[���p�b�h�̐U�����
	PADVIB m_aVibState[MAX_PLAYER];					//�U���̏��
	int m_nVibTimer;		// �o�C�u���[�V�����̃^�C�}�[
	int m_aCntRepeat[MAX_PLAYER][PADBUTTONS_MAX];	// ���s�[�g�J�E���^�[
};

#endif
