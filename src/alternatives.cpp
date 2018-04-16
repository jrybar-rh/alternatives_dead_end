/*
 * alternatives.cpp
 *
 *  Created on: Mar 26, 2018
 *      Author: jrybar
 */

#include <string>
#include <vector>
#include <iostream>
#include "alternatives.h"


using namespace std;


typedef struct {
	string hash;	//primary key

	unsigned priority;
	string initscript;
	string family;
} Alternative_t;

typedef struct {
	string hash;	//primary key

	string link;	// e.g. /bin/editor
	string target;	// e.g. /usr/bin/fancyed-1.1.0
	unsigned flags;
} AlternativeItem_t;


class AlternativeSet {
private:
	vector<Alternative_t> alternatives;
	vector<AlternativeItem_t> alternatives_db;

	unsigned num_of_alts;

public:
	AlternativeSet();
	virtual ~AlternativeSet();
};


AlternativeSet::AlternativeSet() {
	num_of_alts = 0;
	alternatives = NULL;
	alternatives_db = NULL;
}

AlternativeSet::~AlternativeSet() {
	delete[] alternatives;
	delete[] alternatives_db;
}

