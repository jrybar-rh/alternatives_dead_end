/*
 * alternative.cpp
 *
 *  Created on: Apr 16, 2018
 *      Author: jrybar
 */
#include <iostream>
#include "include/alternative.h"

using namespace std;

namespace alternatives {

// prototypes
int set_link(AlternativePair_t& pair);
int unset_link(string const& path);


// constructors, destructor
Alternative::Alternative() {
	this->master = NULL;
	this->priority = 0;
	this->yield_iterator = NULL;
	// initialize iter after first insertion into pairs!!!
}

Alternative::Alternative(string initscript, string family, int priority) {
	Alternative();
	this->initscript = initscript;
	this->family = family;
	this->priority = priority;
	this->master = NULL;
}

Alternative::Alternative(FILE file) {
}

Alternative::Alternative(string filename) {
}

Alternative::~Alternative() {
	// TODO delete each record in vector pairs<>
}



// payload functions
void Alternative::add_pair(AlternativePair_t* new_pair) {
	if ((new_pair == NULL) ||
		(new_pair->link.length() == 0) ||
		(new_pair->target.length() == 0) ) {
		return;
	}

	AlternativePair_t existing_pair = get_pair_with_link(new_pair->link);

	if (existing_pair != NULL) {
		// throw exception? or do nothing and return?
	}

	if (new_pair->flags & FLAG_MASTER) {
		if (this->master) {
			// TODO throw exception if master exists?
		}
		else {
			this->master = new_pair;
		}
	}

	this->pairs.push_back(new_pair);
	return;
}


const AlternativePair_t* Alternative::yield_pair() const {
	const AlternativePair_t* ret_val;

	if (this->pairs.size() == 0)
		return NULL;

	if ((this->yield_iterator == NULL) || (this->yield_iterator == pairs.end())) {
		this->yield_iterator == pairs.begin();
	}
	ret_val = *(this->yield_iterator)++;

	return ret_val;
}


const AlternativePair_t* Alternative::get_pair_with_link(string path) const {

	if (path.size() < 1 && pairs.size() < 0) {
		return NULL;
	}

	for (vector<AlternativePair_t*>::iterator iter = pairs.begin(); iter != pairs.end(); iter++) {
		if ((*iter)->link == path) {
			return *iter;
		}
	}

	return NULL;
}


// setters
void alternatives::Alternative::set_initscript(string& path) {
	this->initscript = path;
}


void alternatives::Alternative::set_family(string& family) {
	this->family = family;
}


void Alternative::set_priority(int priority) {
	this->priority = priority;
}


// getters
string const& Alternative::get_initscript(){
	return this->initscript;
}


string const& Alternative::get_family(){
	return this->family;
}


const int Alternative::get_priority() {
	return this->priority;
}


const AlternativePair_t& Alternative::get_master() {
	return this->master;
}


// control functions
int Alternative::save_to_file(FILE file) {
	return 0;
}

int Alternative::activate() {
	return 0;
}

int Alternative::deactivate() {
	return 0;
}


/*
 * This implements the old idea that one facility file holds several alternatives.
 * Our goal is to maintain one file per alternative.
vector<Alternative>* get_alternatives_from_file(FILE file) {
}
*/


int set_link(AlternativePair_t& pair) {
	return 0;
}


int unset_link(string const& path) {
	return 0;
}

}	// namespace alternatives

