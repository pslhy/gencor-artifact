(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
let rec remove_uppercase (str1 : string) : string = 
  let is_uppercase ch = ch >= 'A' && ch <= 'Z' in
  let rec iter i res = 
    if i >= String.length str1 then
      res
    else if is_uppercase (str1.[i]) then
      iter (i + 1) res
    else
      iter (i + 1) (res ^ (String.sub str1 i 1)) in
  iter 0 ""

;;(lines 3-7 remove_uppercase: Remove all uppercase letters in the provided string.
lines 1-2: Define a helper function is_uppercase to check if a character is uppercase.
lines 8-17: Define a recursive function iter that traverses the string.
lines 9-10: Base case; if the index is greater than or equal to the string length, return the result.
lines 11-13: If the current character is uppercase, skip it and continue iteration.
lines 14-17: If the current character is lowercase, add it to the result and continue iteration.

.assert(remove_uppercase "abCDeFG") = "abdfg"
.assert(remove_uppercase "HelloWorld") = "elloorld"
.assert(remove_uppercase "1234!@#$") = "1234!@#$"
.assert(remove_uppercase "aAaAaA") = "aaaaa"
.assert(remove_uppercase "") = "")

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:39: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_uppercase (str1 : string) : string = 
  let is_uppercase ch = ch >= 'A' && ch <= 'Z' in
  let rec iter i res = 
    if i >= String.length str1 then
      res
    else if is_uppercase (str1.[i]) then
      iter (i + 1) res
    else
      iter (i + 1) (res ^ (String.sub str1 i 1)) in
  iter 0 ""

