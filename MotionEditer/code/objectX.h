//*****************************************************
//
// X�t�@�C���̏���[objectX.cpp]
// Author:���R����
//
//*****************************************************

#ifndef _OBJECTX_H_
#define _OBJECTX_H_

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "main.h"
#include "object.h"
#include "model.h"

//*****************************************************
// �}�N����`
//*****************************************************
#define NUM_TEX	(5)	// �e�N�X�`���̐�

//*****************************************************
// �N���X��`
//*****************************************************
class CObjectX : public CObject
{
public:
	CObjectX();	// �R���X�g���N�^
	~CObjectX();	// �f�X�g���N�^

	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static CObjectX *Create(D3DXVECTOR3 pos = { 0.0f,0.0f,0.0f }, D3DXVECTOR3 rot = { 0.0f,0.0f,0.0f });
	float GetWidth(void) { return 0.0f; }	// �T�C�Y�擾
	float GetHeight(void) { return 0.0f; }	// �T�C�Y�擾
	void SetPosition(D3DXVECTOR3 pos) { m_pos = pos; }	// �ݒ菈��
	D3DXVECTOR3 GetPosition(void) { return m_pos; }	// �擾����
	void SetMove(D3DXVECTOR3 move) { m_move = move; }	// �ݒ菈��
	D3DXVECTOR3 GetMove(void) { return m_move; }	// �擾����
	D3DXVECTOR3 GetPositionOld(void) { return m_posOld; }
	void SetRot(D3DXVECTOR3 rot) { m_rot = rot; }// �����ݒ菈��
	D3DXVECTOR3 GetRot(void) { return m_rot; }	// �����擾����
	void BindModel(int nIdx);
	int GetIdxModel(void) { return m_IdxModel; }
	void SetIdxModel(int nIdx) { m_IdxModel = nIdx; }
	void SetRadius(void);
	float GetRadius(void) { return m_fRadius; }
	D3DXMATRIX *GetMatrix(void) { return &m_mtxWorld; }
	void SetMatrix(void);
	D3DXVECTOR3 GetVtxMax(void) { return m_vtxMax; }	// �擾����
	D3DXVECTOR3 GetVtxMin(void) { return m_vtxMin; }	// �擾����

private:
	D3DXVECTOR3 m_pos;								//�ʒu
	D3DXVECTOR3 m_posOld;	// �O��̈ʒu
	D3DXVECTOR3 m_move;	// �ړ���
	D3DXVECTOR3 m_rot;								//����
	D3DXMATRIX m_mtxWorld;							//���[���h�}�g���b�N�X
	CModel::Model *m_pModel;
	int m_IdxModel;	// ���f���̔ԍ�
	float m_fRadius;	// ���f���̔��a
	D3DXVECTOR3 m_vtxMax;	// �ő咸�_
	D3DXVECTOR3 m_vtxMin;	// �ŏ����_
};

#endif