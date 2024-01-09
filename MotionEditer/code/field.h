//*****************************************************
//
// �n�ʂ̏���[field.h]
// Author:���R����
//
//*****************************************************

#ifndef _FIELD_H_
#define _FIELD_H_

//*****************************************************
// �C���N���[�h
//*****************************************************
#include "object3D.h"

//*****************************************************
// �N���X�̒�`
//*****************************************************
class CField : public CObject3D
{
public:
	CField(); // �R���X�g���N�^
	~CField();	// �f�X�g���N�^

	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static CField *Create(D3DXVECTOR2 tex = D3DXVECTOR2{ 1.0f,1.0f }, D3DXVECTOR3 pos = { 0.0f,0.0f,0.0f }, float width = 3000.0f, float height = 3000.0f);

private:
};

#endif