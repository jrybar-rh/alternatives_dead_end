/*
 * alternative.cpp
 *
 *  Created on: Apr 16, 2018
 *      Author: jrybar
 */
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
	// TODO verify if new pair not present in pairs<>
}

AlternativePair_t Alternative::yield_pair() {
	return NULL;
}

AlternativePair_t Alternative::get_pair_with_link(string path) {
	return NULL;
}


// setters
inline void alternatives::Alternative::set_initscript(string& path) {
	this->initscript = path;
}

inline void alternatives::Alternative::set_family(string& family) {
	this->family = family;
}

inline void Alternative::set_priority(int priority) {
}


// getters
inline string const& Alternative::get_initscript(){
	return this->initscript;
}

inline string const& Alternative::get_family(){
	return this->family;
}

inline const int Alternative::get_priority() {
	return this->priority;
}

inline const AlternativePair_t& Alternative::get_master() {
	return this->master;
}


// control functions
int Alternative::save_to_file(FILE file) {
}

int Alternative::activate() {
}

int Alternative::deactivate() {
}


/*
 * This implements the old idea that one facility file holds several alternatives.
 * Our goal is to maintain one file per alternative.
vector<Alternative>* get_alternatives_from_file(FILE file) {
}
*/


int set_link(AlternativePair_t& pair) {
}


int unset_link(string const& path) {
}

}	// namespace alternatives

