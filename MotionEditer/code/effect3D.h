//*****************************************************
//
// 3D�G�t�F�N�g����[effect3D.h]
// Author:���R����
//
//*****************************************************

#ifndef _EFFECT3D_H_
#define _EFFECT3D_H_

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "billboard.h"

//*****************************************************
// �N���X�̒�`
//*****************************************************
class CEffect3D : public CBillboard
{
public:
	CEffect3D(int nPriority = 6);	// �R���X�g���N�^
	~CEffect3D();	// �f�X�g���N�^

	static CEffect3D *Create(D3DXVECTOR3 pos,  float fRadius, int nLife, D3DXCOLOR col, D3DXVECTOR3 move = { 0.0f,0.0f,0.0f });
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static HRESULT Load(void);	// �Ǎ�
	static void Unload(void);

private:
	int m_nLife;	// ����
	float m_fDecrease;	// ������
	D3DXVECTOR3 m_move;
};

#endif