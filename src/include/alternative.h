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

	/*
	 * For speed improvement - --install and --remove controlled by path to master
	 */
	AlternativePair_t *master;

	string initscript;
	string family;

public:
	Alternative();
	Alternative(string name);
	Alternative(string name, string initscript, string family);
	virtual ~Alternative();

	void add_pair(AlternativePair_t new_pair);
	AlternativePair_t yield_pair();
	AlternativePair_t link_is_present(string path);


	// GETTERS, SETTERS
	void set_name(string& name);
	void set_family(string& family);
	void set_initscript(string& path);

	string const& get_name();
	string const& get_family();
	string const& get_initscript();
	AlternativePair_t const& get_master();

};


vector<Alternative> *get_alternatives_from_file(FILE file);
int save_alternative_to_file(Alternative alternative, FILE file);

int set_alternative(Alternative alternative);
int set_link(AlternativePair_t pair);
int unset_link(string path);


}	// namespace alternatives


#endif /* SRC_INCLUDE_ALTERNATIVE_H_ */
