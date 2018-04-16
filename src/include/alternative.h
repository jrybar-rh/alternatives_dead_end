/*
 * alternative.h
 *
 *  Created on: Apr 16, 2018
 *      Author: jrybar
 */

#ifndef SRC_INCLUDE_ALTERNATIVE_H_
#define SRC_INCLUDE_ALTERNATIVE_H_
#include <iostream>
#include <vector>


using std::vector;
using std::string;


namespace alternatives {


typedef struct {
	string link;	// e.g. /bin/editor
	string target;	// e.g. /usr/bin/fancyed-1.1.0
	unsigned flags;
} AlternativePair_t;


class Alternative {
private:
	string name;
	vector<AlternativePair_t> pairs;

	string initscript;
	string family;

public:
	Alternative();
	Alternative(string name);
	Alternative(string name, string initscript, string family);
	virtual ~Alternative();

	void add_pair(AlternativePair_t new_pair);
	AlternativePair_t yield_pair();


	// GETTERS, SETTERS
	string get_name();
	void set_name();

	string get_initscript();
	void set_initscript();

	string get_family();
	void set_family();
};


vector<Alternative> *get_alternatives_from_file(FILE file);
int save_alternative_to_file(Alternative alternative, FILE file);


}


#endif /* SRC_INCLUDE_ALTERNATIVE_H_ */
