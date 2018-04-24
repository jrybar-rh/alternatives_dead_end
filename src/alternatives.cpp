/*
 * alternatives.cpp
 *
 *  Created on: Mar 26, 2018
 *      Author: jrybar
 */

#include <string>
#include <vector>
#include <iostream>
#include <cstdlib>
#include <getopt.h>
#include "include/alternative.h"

#define ALTERNATIVES_VERSION "version placeholder"


using namespace std;



int main(int argc, char* argv[]) {
	int c;


	static const struct option longopts[] = {
			{"install", required_argument, NULL, 'i'},
			{"remove", required_argument, NULL, 'r'},
			{"set", required_argument, NULL, 's'},
			{"auto", required_argument, NULL, 'a'},
			{"display", required_argument, NULL, 'd'},
			{"config", required_argument, NULL, 'c'},
			{"list", no_argument, NULL, 'l'},
			{"remove-all", required_argument, NULL, 'R'},
			{"help", no_argument, NULL, 'h'},
			{"verbose", no_argument, NULL, 'v'},
			{"test", no_argument, NULL, 't'},
			{"altdir", required_argument, NULL, 'm'},
			{"admindir", required_argument, NULL, 'M'},
			{"version", no_argument, NULL, 'V'},
			{NULL, 0, NULL, 0}
		};


	while ((c =
			getopt_long(argc, argv, "i:r:s:a:d:c:lR:hvtm:M:V", longopts,
				    NULL)) != EOF)
			switch (c) {
			case 'V':
				cout << ALTERNATIVES_VERSION << endl;
				return EXIT_SUCCESS;
			case 'h':
				usage(ostream);
			case 'd':
				display(optarg[0]);
				break;
			case 'a':


				break;
			case 'i':

				exit(0);
			case 'r':

				break;
			case 's':

				break;
			case 'd':

				break;
			case 'c':

				break;
			case 'l':

				break;
			case 'r':

				break;
			case 't':

				break;
			case 'm':

				break;
			case 'M':

				break;
			default:
				/* no other aguments defined yet. */
				usage(stderr);
			}

		if (optind < argc) {
			//TODO  erroroutputfn(argv[optind++], _("failed to parse argument"));
			usage(stderr);
		}


	return 0;
}
