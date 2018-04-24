/*
 * alternative.cpp
 *
 *  Created on: Apr 16, 2018
 *      Author: jrybar
 */
#include "include/alternative.h"

using namespace std;

namespace alternatives {

Alternative::Alternative() {
}


Alternative::Alternative(string name) {
}


Alternative::Alternative(string name, string initscript, string family) {
}


Alternative::~Alternative() {
}


void Alternative::add_pair(AlternativePair_t new_pair) {
}


// probably unnecessary - can be avoided with pointer to master
void alternatives::Alternative::set_name(string& name) {
	this->name = name;
}

void alternatives::Alternative::set_initscript(string& path) {
	this->initscript = path;
}

void alternatives::Alternative::set_family(string& family) {
	this->family = family;
}


string const& Alternative::get_name() {
	return this->name;
}

string const& Alternative::get_initscript(){
	return this->initscript;
}

string const& Alternative::get_family(){
	return this->family;
}

const AlternativePair_t& Alternative::get_master() {
	return this->master;
}

AlternativePair_t Alternative::yield_pair() {
}


AlternativePair_t Alternative::link_is_present(string path) {
	return NULL;
}


vector<Alternative>* get_alternatives_from_file(FILE file) {
}


int save_alternative_to_file(Alternative alternative, FILE file) {
}


int set_alternative(Alternative alternative) {
}


int set_link(AlternativePair_t pair) {
}


int unset_link(string path) {
}

}

