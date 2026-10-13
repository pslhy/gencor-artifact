(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
let rec odd_length_sum (arr : int list) : int =
match arr with
| [] -> 0
| _ -> (List.nth arr (List.length arr - 1)) + odd_length_sum (List.drop (arr) (List.length arr - 1))
;;

let () =
  assert (odd_length_sum [1; 2; 3; 4; 5] = 9);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6] = 15);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6; 7] = 21);
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:63: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | _ -> (
    let (x, xs) = List.split_at (arr) (List.length (arr) - 1) in
    x :: odd_length_sum xs
  )
;;

let () =
  assert (odd_length_sum [1; 2; 3; 4; 5] = 9);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6] = 15);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6; 7] = 21);
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | _ -> (
    let (x, xs) = split (arr) (List.length (arr) - 1) in
    x :: odd_length_sum xs
  )
;;

let () =
  assert (odd_length_sum [1; 2; 3; 4; 5] = 9);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6] = 15);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6; 7] = 21);
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "split" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | _ -> (
    let (x, xs) = List.split_at (arr) (List.length (arr) - 1) in
    x :: odd_length_sum xs
  )
;;

let () =
  assert (odd_length_sum [1; 2; 3; 4; 5] = 9);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6] = 15);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6; 7] = 21);
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "List.split_at" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_length_sum (arr : int list) : int =
  match arr with
  | [] -> 0
  | _ -> (
    let (x, xs) = split (arr) (List.length (arr) - 1) in
    x :: odd_length_sum xs
  )
;;

let () =
  assert (odd_length_sum [1; 2; 3; 4; 5] = 9);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6] = 15);
  assert (odd_length_sum [1; 2; 3; 4; 5; 6; 7] = 21);
;;

