(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple. *)
let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool =
  match test_tup1 with
  | t1, t2, t3 ->
    (t1 < t2 && t2 < t3)

let test_smaller () =
  let test_cases = [
    ((1, 2, 3), (2, 3, 4));
    ((1, 2, 3), (2, 4, 3));
    ((1, 2, 3), (2, 3, 5));
  ] in
  List.iter (fun (pairs1, pairs2) ->
             if check_smaller pairs1 pairs2 then
               printf "%d, %d, %d is smaller than %d, %d, %d\n" pairs1.fst pairs1.snd pairs1.trd pairs2.fst pairs2.snd pairs2.trd
             else
               printf "%d, %d, %d is not smaller than %d, %d, %d\n" pairs1.fst pairs1.snd pairs1.trd pairs2.fst pairs2.snd pairs2.trd
  ) test_cases

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:16: Unbound value "printf" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_smaller (test_tup1 :  int * int * int) (test_tup2 :  int * int * int) : bool =
  match test_tup1 with
  | t1, t2, t3 ->
    (t1 < t2 && t2 < t3)

let test_smaller () =
  let test_cases = [
    ((1, 2, 3), (2, 3, 4));
    ((1, 2, 3), (2, 4, 3));
    ((1, 2, 3), (2, 3, 5));
  ] in
  List.iter (fun (pairs1, pairs2) ->
             if check_smaller pairs1 pairs2 then
               Printf.printf "%d, %d, %d is smaller than %d, %d, %d\n" pairs1.fst pairs1.snd pairs1.trd pairs2.fst pairs2.snd pairs2.trd
             else
               Printf.printf "%d, %d, %d is not smaller than %d, %d, %d\n" pairs1.fst pairs1.snd pairs1.trd pairs2.fst pairs2.snd pairs2.trd
  ) test_cases

