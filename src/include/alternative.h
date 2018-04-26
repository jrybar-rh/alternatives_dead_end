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

#define FLAG_MASTER 0x1


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
	vector<AlternativePair_t*> pairs;

	/*
	 * For speed improvement - --install and --remove controlled by path to master
	 */
	AlternativePair_t *master;

	string initscript;
	string family;
	int priority;

	std::vector<AlternativePair_t>::iterator iter;

public:
	Alternative();
	Alternative(string initscript, string family, int priority);
	Alternative(FILE file);
	Alternative(string filename);

	virtual ~Alternative();

	void add_pair(AlternativePair_t* new_pair);
	const AlternativePair_t* yield_pair() const;
	const AlternativePair_t* get_pair_with_link(string path) const;


	// GETTERS, SETTERS
	void set_family(string& family);
	void set_initscript(string& path);
	void set_priority(int priority);

	string const& get_family();
	string const& get_initscript();
	const int get_priority();
	AlternativePair_t const& get_master();

	int activate();
	int deactivate();
	int save_to_file(FILE file);

};


}	// namespace alternatives


#endif /* SRC_INCLUDE_ALTERNATIVE_H_ */
