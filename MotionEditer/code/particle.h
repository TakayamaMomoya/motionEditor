//*****************************************************
//
// �p�[�e�B�N������[particle.h]
// Author:���R����
//
//*****************************************************

#ifndef _PARTICLE_H_
#define _PARTICLE_H_

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "object.h"

//*****************************************************
// �N���X��`
//*****************************************************
class CParticle : public CObject
{
public:
	typedef enum
	{
		TYPE_NONE = 0,	// ���ł��Ȃ�
		TYPE_EXPLOSION,	// ����
		TYPE_MAX
	}TYPE;

	CParticle(int nPriority = 3);	// �R���X�g���N�^
	~CParticle();	// �f�X�g���N�^

	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void) {};
	static CParticle *Create(D3DXVECTOR3 pos, TYPE type);
	void SetPosition(D3DXVECTOR3 pos);
	D3DXVECTOR3 GetPosition(void) { return m_pos; }
	D3DXVECTOR3 GetPositionOld(void) { return D3DXVECTOR3(); }	// �擾����
	float GetWidth(void) { return 0.0f; }	// �T�C�Y�擾
	float GetHeight(void) { return 0.0f; }	// �T�C�Y�擾

private:
	D3DXVECTOR3 m_pos;	// �ʒu
	int m_nLife;	// ����
	int m_nNumEffect;	// �G�t�F�N�g�̐�
	float m_fSpeed;	// �G�t�F�N�g�̊�X�s�[�h
	D3DXCOLOR m_col;	// �F
};

#endif