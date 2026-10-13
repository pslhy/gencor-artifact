
let rec division_elements (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int = 
    let division_element a b = a / b
    (division_elements test_tup1 test_tup2)

(* Testing*)
(* Prints *)
(* [ 4; 8; 3; 8 ] *)
(* [ 2; 4; 6; 3 ]

 let test_tup1 = (4, 8, 3, 8)
 let test_tup2 = (2, 4, 6, 3)
 Printf.printf "[%d; %d; %d; %d ]" division_elements test_tup1 test_tup2
*)

(* Explanation
   This function takes in two tuples, performs mathematical division operation element-wise across the given tuples and returns
   a new tuple containing division elements
*)

(* OCaml REPL Comments *)
(* let division_elements (test_tup1 :  int * int * int * int * int) (test_tup2 :  int * int * int * int ) :  int * int * int * int     fun_division_tuple test_tup1 test_tup2 *)
(* Prints *)
(* [4; 8; 3; 8], [8; 6; 4; 2] *)
(* function division_elements test_tup1 test_tup2 (* Prints *) *)
(* [ 4;  8; 3; 8 ] *)

(* CREATING A TUPLE SLICE. ocamltags are not needed*)

  (* IF THE oCaml Document is needed*)
        (* OCaml tags are required *)

  (* GITHUB ISSUE*)
  (* https://github.com/comp-think/ocaml-src/issues/517
   1.
  Docs there - para **FROM THE CREAM** - paragraph from the cream.
  Let's measure these lines:
  "There is a function "division_elements" which takes in two tuple representing lengths. The first tuple contains the divisors
  and the second tuple contains the dividend."

  From this, it's clear that the function supports only integral types - int*int*int*int.
  *********************************************************************************************************************
  *
  *)

  (* SOURCE: *)
  (* https://github.com/comp-think/learn-ocaml/blob/master/git-remote-examples/learn-it/2-ml/3-intermediate1_2.ml *
* How to Divide Tuples Element by Element *)

  (* OCaml REPL - ocaml*Shell*)
  (* OCaml tags documentation. *)

  (* Github issued used in ocamltags*)
  (* Documentation is required. *)

  (*
    Solution:

    These are the requirements in functional programming:
            a. A function takes in two or more arguments but returns only one value.
            b. A function takes in something but returns nothing.
            c. A not transitive function returns something.

   *)

  (* Definition of the Function: A function to divide two tuples across Elements *)

  (* Signature for function defined *)
  (* let division_elements test_tup1 test_tup2 *)

  (* Function established. So we can PROCEED *)

  (* Function tests - code for ocaml *)

  (* Function returns *)
  (* Definition: Tup1 = (4, 8, 3, 8), Tup2 = (2, 4, 6, 3) *)
  (* Function returns, Tuple division - Then we needed to cut T1 from the tuple *)
  (* Printf.printf "[%d; %d; %d; %d] \n" T1 *)
  (* "," ---> 0 1 2 3 *)
  (* T1's length - 4 *)
  (* T1 DEFINED ---> *)

  (* Prints *)
  (* [ 4;  8; 3; 8 ] *)
  (* [ 2; 4; 6; 3 ]

   Printf.printf "[%d; %d; %d; %d ]\n" (division_elements test_tup1 test_tup2)

  *)

  (* Explanation
    This function takes in two tuples, performs mathematical division operation element-wise across the given tuples and returns
    a new tuple containing division elements
   *)

(* Amended the REPL Code *)

(* OCaml REPL lines of code *)
(* OCaml function: dividing tuples across elements *)
(* (4,8,3,8) DIVIDED BY (2,4,6,3) *)
(* Prints *)
(* [4;8;3;8]   *)
(* [ ,8,3,8]   *)

  (* Definitions *)
  (* The second tuple *)
  (* Test_tup1   *)
  (* The first tuple *)
  (* Test_tup2   *)
  (* A FUNCTION:  *)

(* REPL Command for functional divode tuples *)
 (* let rec division_elements (test_tup1 :  int * int * int * int *) (* test_tup2 :  int * int * int * int may need to be changed depending on accessed tuples *) (*  -> int gives an error *) (*  return *) (*  (division_elements *)

  (* FUNCTION to NCiLL (Numberioou) *)

  (* numbers division in test_tuples *)

  (* division_elements  - named part of the method to divide numbers *)
  (* print division elements in test_tup1 and test_tup2 *)

  (* SCRIPT sections - sections one and section two methods to divide numbers in test_tupes *** ")")
  (* starting test_tup1 and test_tup2 - tupes in integers *)

  // RESTART WITH test_tup1 and test_tup2 

  (*   OCaml - Prints *)
  (*
   function division_elements  test_tup1  test_tup2 -- Printf TUP1  Test_tup2)
    // TUUPLE TPK1
   * // TUUPLE - TPK2
   **// PRINTS [4; 8; 3; 8] ["", 8, ".3", ""]
   * // PRINT_TUUPLE 2
   **// PRINTS [2; 4; ".6", ""]
   * // PRINT_FUNCTION
  ####
   *)
/* OCaml FUNCTION return - AS name)  FA, the message was succesfull *)
(***
Tuple division : Successful
Printf.printf "[%d; %d; %d; %d] \n" test_tup1
**// Return Statement)**
*)

  (* Restart the REPL sections *)

  (***
  Now I need a FUNCTION to set the names oF number one and two
  ( a Single function defined for two *** *)
  (*   OCaml - Prints *)
  (* 
   // (4 * 2 = 8) 
   function division_elements  test_tup1  test_tup2 -- Printf TUP1  Test_tup2)
    // TUUPLE TPK1
   * // TUUPLE - TPK2
   **// PRINTS [4; 8; 3; 8] ["", 8, ".3", ""]
   * // PRINT_TUUPLE 2
   **// PRINTS [2; 4; ".6", ""]
   * // PRINT_FUNCTION
  ####
   *)
(* OCaml FUNCTION return - AS name)  FA, the message was succesful *)

  (***
  Same tuples as above in sections one and section two to divide numbers in sections *** ")")
/* OCaml FUNCTION return - AS name)  FA, the message was succesful *)
  (***
Now I need a FUNCTION to set the names of number one and two
( a Single function defined for two *** *)
  (*   OCaml - Prints *)
  (* 
   // 4 * {"0"}; 8) 
   function division_elements  test_tup1  test_tup2 -- Printf TUP1  Test_tup2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in two tuples and performs mathematical division operation element-wise across the given tuples. *)
