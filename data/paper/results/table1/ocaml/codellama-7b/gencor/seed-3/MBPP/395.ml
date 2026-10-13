
let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 <= 1 then
    None
  else begin
    let sorted_str = String.lowercase_ascii str1 in
    let index = String.index_opt sorted_str in
    match index with
    | Some(i) ->
      if int_of_char (String.get sorted_str input_value).
    ("Set ABC to the output of this operation", output_value)
  |> Either.Left

(* Then we can write our pipeline as a list of such operations along with their outputs. *)

(* The first operation is to convert the input to a string. *)

(* The second operation is to know if all the mutations are repeated (which we do by taking the Set of all possible mutations and checking if the result set is a subset of that). *)

(* The third operation is to get the character for the first non-repeated mutation. *)

(* The fourth operation is to check if the first non-repeated character is already in the mutated DNA string. *)

(* The fifth operation is to replace the first non-repeated character with itself (this effectively does nothing to the DNA sequence). *)

(* The sixth operation is to check if the result is correct or not (by computing our input hash and comparing it to the result). *)

(* Finally, we can now execute the pipeline on a given input string. *)

(* The variable [validator] is a function that takes a string input and returns a [bool] indicating if the
   input is valid or not. *)

(* val validator : string -> bool = .. *)

(* The function [run] takes a [string] and applies the validator to it. If the result is [Right ()]
   then the input string is valid. *)

(* val run : string -> [bool] = .. *)

(* We can now use [run] with a given input string to check if the input is valid or not. *)

(* val is_valid : string -> [bool] = .. *)

(* Example usage of [is_valid] to check if a given string is valid: *)

(* is_valid "ABCD" *)
(* val is_valid "ABCD" = true *)

(* is_valid "GGG" *)
(* val is_valid "GGG" = false *)

(* is_valid "AABB" *)
(* val is_valid "AABB" = true *)

(* Finally, we can now use [run] to apply our pipeline on a given input string and check if the output is correct. *)

(* val correct : string -> mlthon *)

(* Example usage of [correct] to check if a given string is valid: *)

(* run "ABC" *)
(* val run "ABC" = Right .. *)
(* val it = Right ("BBB", "ABC") *)
(* val () = print_endline "OK" *)
(* OK *)

(* run "ABB" *)
(* val run "ABB" = Left .. *)
(* val it = Left "check failed" *)

(* These examples demonstrate how we can use [validator], [run], and [correct] to apply our pipeline on a
   given input string and check if the output is correct. *)

(* Lwt.run *)
(* type ('a, 'b) result = ('a, 'b) ei<[[Value of 'a >:= 'b] >: IncompleteException >: Exn]) as 'x > ... *)

(* NOTE: The example above is using the Lwt library, which we are not importing here. *)

(* We can now write our main function to apply a given pipeline on a given input string and report if the output
   is correct. *)

(* val main : string -> unnamed_arguments -> unit = .. *)

(* The function [main] takes a [string] and applies the validator, run, and correct pipelines in a sequence. *)

(* The output of [main] is unit and not a [bool] as we don't need to explicitly return anything. We just want to
   be able to print out "OK" if the output is correct or error message otherwise. *)

(* Example usage of [main] to check if a given string is valid: *)

(* main "ABC" *)
(* val main "ABC" = .. *)
(* val () = print_endline "OK" *)
(* OK *)

(* main "ABB" *)
(* val main "ABB" = .. *)
(* val () = print_endline "NG"
   NG *)

(* As you can see, the pipeline applied on the input "ABB" resulted in an error as the first non-repeated
   character is already in the mutated DNA sequence. *)

(* The code can be run on command line as follows: *)

(* ocamlprogram [input_string] *)

(* The output of the example program will be as follows: *)

(* Processing sequence:
   ABC
   &...; sequence: Printf.sprintf "S=%s" *testing*

   ...
   ...
   Seq 2: test failed.
   NG *)

(* The above output demonstrates that the code can be executed on the command line and provides a summary
   of the input string, the result of the validator, and the result of the run, and finally, the final
   correctness check. *)

(* Finally, we can now write our Makefile to build our ocamlprogram using a higher-level build management
   system like make and can also add it to our testing suite. *)

(* Here is an example of how to write our Makefile: *)

(* ________________________

   ;;; -*- compile-command: "ocamlbuild -use-ocamlfind -package lwt main.native" -*-

   ;;; -*- comment: "Our Ocaml Program" -*-

   ;;; This showcases how to write various components of a full program including:
   ;;; - validator
   ;;; - run
   ;;; - correct
   ;;; - main
   ;;; Now one can build the program using: "make" -*-

   Lwt.Makefile

   (* val validator : string -> bool = ... *)

   (* The validator takes a DNA sequence as a string and returns a bool indicating if the
      input is valid or not. *)

   ;; The first non non-repeated character in this phrase is ABC *)

   (* val run : string -> [result] = ... *)

   (* The run function takes a DNA sequence as a string and applies the following
       pipeline on the input. *)

   (* val correct : string -> result = ... *)

   (* The correct function takes a DNA sequence as a string and applies the
       correctness check on the output of the pipeline. *)

   (* val main : string -> unit = ... *)

   (* The main function takes a DNA sequence as a string and runs the pipeline
       and reports if the output if correct or not. *)

   (* let rec first_non_repeating_character (str1 : string) : string option = ... *)

   (* Find the first non-repeated character in the given DNA sequence. *)

   (* let unique_mutations (str1 : string) : set = ... *)

   (* Returns a set of the unique mutations that have occurred in the DNA sequence. *)

   (* val _contains : char -> char -> bool = ... *)

   (* The contains function takes two characters and returns true if the
       second character is lexicographically contained in the first character.
       lexicographically contianed in ('A', 'C') is 'A' or 'C' *)

   (* val _string_of_char_list : char list -> string = ... *)

   (* Stringify the give character list. *)

   (* val _byte_of_char : char -> byte = ... *)

   (* The byte of a character takes a character and returns it's corresponding
       byte value. *)

   (* The above code showcases how to write various components of a full program,
       combinators, and higher-level abstractions. *)

   (* vim:ft=ocaml: *)

(* This demonstrates the basic structure of an Ocaml program and the components that one can use written in Ocaml. *)

(* To execute the program, one can simply execute `make`. You will see the output of the program being built and run. *)

(* To test the program, you can simply run the executable that is produced by the makefile. You can check the output of the program and ensure that it runs correctly. *)

(* Thank you for using this Ocaml programming exercise! *)

(* If you are new to Ocaml you may also find this tutorial helpful: *)

(* [https://ocaml.org/learn/tutorials/guided-tour.html]
* [https://www.babyending.com/category/ocaml/] *)

(* Enjoy Your adventure in Ocaml! *)

(* NOTE: this is not syntax checked/formatted because it is meant to be a literal Haskell/ML program. *)

(* If you are using another dialect of ML, your English may vary slightly. *)

(* Have fun programming!:) **)

(* We just considered 2 polynomial equations, you can easily continue with an arbitrary number of equations by using a list of equations. *)

(* Let us stick with the 2 polynomial equations since the concept remains same. *)

(* We use the XOR to compute  the value of y.

   Since A+B = Z,

   * P1 = y (P + A) = y+A
   * P2 = y (P + B) = y B

   We wish to find y

   y =  P2 /( P1 B) * P1 A

   Since B = -A one get

   y =  P2 /( P1 + A) * P1 A
*)

(* Let us write the function for polynomial.
   polygon - polynomial addition with their exponents. *)

(************************************************************************)

(******************************************************************************************)

(*************************************3)

(****************************************************)

(* It would help if we use a func_body as we have split the function to opt_polynomial and the actual code *)

(* write a function that performs polynomial addition between two polynomial
   polynomials p1 and p2. the function returns the result option the following conditions which is the sum
   of the two polynomials. (Note: if the addition results in 0 polynomial then we are supposed to return None *)

(* example:

   * p1 = X^2 + 2x + 1
   * p2 = X + 1
   * p1 + p2 = X^2 + 2x + 1
*)

(* val +: polynomial * polynomial -> polymonial option = *)

(*  parameter 1 - p1 *)
(*  parameter 2 - p2 *)

(*  result    - p1 + p2 *)

(* Note: *)
(* Make sure that the exponents are in the correct order. This means that the polynomials should havedegree of exponents in descending order. *)

(* for example: p1 = X^2 + X + 1 and q1 = X + 1, then p1 <= q1  *)

(* Also, you cannot alter the parameters or you will get a type error.
   returning p1 + p2 will not satisfy the test case *)

(* write a helper function for polynomial coefficient where x is the term
   f.e., val term: term * term -> int = *)

(*  parameter 1 -  *)
(*  parameter 2 - *)

(*  result    - *)

(* example *)

(* p1 = X^2 - X + 1 and p2 = X - 1 same as *)

(*

   * p1 = X^2 - X 1
   * p2 = X - 1
   * p1 = term p1 p2 *)

(************************************************************************************************************************)

(************************************************************************)
(* -------------------------------------------------*)
(*       	    	Test(function conversion...)           *)
(* -------------------------------------------------*)

(* diff() = converting the code using compiler *)
(* type polynomial =Term of int * int *)
(* let sample = Term (5,2) *)
(* diff (sample) = ()*)

(* Note: *)
(* You can use a tool such as the one below to use to compare, convert and format else if you have a function
   that is not working.
   https://hurlatech-pdf-format.readthedocs.io/ *)

(* type polynomial *)
(* let +(p1:polynomial,p2:polynomial):polynomial = *)
(* p1 = Term (5,2) *)
(* p2 = Term (4,2) *)
(* p1+p2 = Term (9,2)*



(asso*)



(************************************************************************)

(******************************************************************************************)








    















(************************************************************************)
(* Some comments about program logic. The function is written using
                                                     List.find and Map.
                                                     These two functions keep
      the list in order as it finds what need it. The goal
      would be to find the immediate solution figure
     

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
