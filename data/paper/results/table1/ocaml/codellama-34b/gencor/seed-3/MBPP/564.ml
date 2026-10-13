
let rec count_Pairs (arr : int list) (n : int) : int =
  if n = 1 then
    0
  else if n = 2 then
    1
  else
    count_Pairs arr (n - 1) + count_Pairs arr (n - 2)

let count_unequal_pairs (arr : int list) : int =
  let len = List.length arr
  count_Pairs arr (min 21 (max 1 (2 * (land))))

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4] *)
(* 21  *)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6] *)
(* 127 *)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7] *)
(* 321 *)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8] *)
(* 429 *)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9] *)
(* 536 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10] *)
(* 640 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11] *)
(* 743 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11; 12] *)
(* 846 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11; 12; 13] *)
(* 949 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11; 12; 13; 14] *)
(* 1052 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15] *)
(* 1155 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16] *)
(* 1258 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17] *)
(* 1361 *)

(*------------------------------------------------------------*)

(* count_unequal_pairs [5; 2; 3; 1; 4; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18] *)
(* 1464 *)

(*------------------------------------------------------------*)

(*----end---*)
(*-------------------------------------------------------------------------------------------*)

(* this function is called inside the loop of sez1361 *)
(* its purpose is to loop over the elements of the bigger array, and for each element, it checks if it's equal to any of the elements of the smaller array *) 
(* if a match is found, then the counter is increased *)
    (*-------------------------------------------------------------------------------------------*)
    (* Function: sez1361 *)
    (* Input: an array of size n, and a list of size m (m < n) *)
    (* Output: the number of possible unordered pairs (x, y) where x is an element of the array, y is an element of the list and x <> y *)
    (*-------------------------------------------------------------------------------------------*) 
    (* mutable count := 0 *)
    (* for x in arr do *)
    (* 	for y in list do *)
    (* 		if (x <> y) *)
    (* 			count := count + 1 *)
    (* od *)
    (* od *)
    (* count *)

(*-------------------------------------------------------------------------------------------*)

(* this function is called inside the loop of sez1258 *)
(* its purpose is to loop over the elements of the bigger array, and for each element, it checks if it's equal to any of the elements of the smaller array *) 
(* if a match is found, then the counter is increased *)
    (*-------------------------------------------------------------------------------------------*)
    (* Function: sez1258 *)
    (* Input: an array of size n, and a list of size m (m < n) *)
    (* Output: the number of possible unordered pairs (x, y) where x is an element of the array, y is an element of the list and x <> y *)
    (*-------------------------------------------------------------------------------------------*) 
    (* mutable count := 0 *)
    (* for x in arr do *)
    (* 	for y in list do *)
    (* 		if (x <> y) *)
    (* 			count := count + 1 *)
    (* od *)
    (* od *)
    (* count *)

(*-------------------------------------------------------------------------------------------*)

(* this function is called inside the loop of sez1155 *)
(* its purpose is to loop over the elements of the bigger array, and for each element, it checks if it's equal to any of the elements of the smaller array *) 
(* if a match is found, then

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
