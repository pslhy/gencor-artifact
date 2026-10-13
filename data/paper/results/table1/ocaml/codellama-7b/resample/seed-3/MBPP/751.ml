(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
let rec check_min_heap (arr : int list) : bool =
  if List.length arr <= 1 then
    true
  else if List.hd arr > fst (List.tl arr) then
    false
  else
    check_min_heap (List.tl arr)

(* Test Cases *)
let rec gen_min_heaps (n : int) : int list list =
  if n <= 0 then
    []
  else
    let new_arr = (Random.int_range 20 100) :: (gen_min_heaps (n - 1)) in
    insert_min_heap (new_arr)

let rec insert_min_heap (arr : int list) : int list =
  if List.length arr <= 1 then
    arr
  else
    let head = List.hd arr in
    let tail = List.tl arr in
    let target = List.hd tail in
    if target < head then
      head :: (insert_min_heap tail)
    else
      let sorted_tail = List.sort compare tail in
      head :: sorted_tail

let l1 = [3; 2; 1] in
let l2 = [1; 2; 3] in
let l3 = [1; 1; 2] in
let l4 = [2; 1] in
let l5 = [2; 1; 2] in
let l6 = [5; 6; 7; 3; 4; 1] in
let l7 = [1; 2] in
let l8 = [1; 2; 3] in
let l9 = [3; 2; 4] in
let l10 = [3; 2; 4; 1] in
let l11 = [3; 3; 4] in
let l12 = [4; 3; 2; 1] in
let l13 = [4; 3; 2; 1] in
let l14 = [1; 2; 3; 4] in
check_min_heap l1 && check_min_heap l2 && check_min_heap l3 && check_min_heap l4
  && check_min_heap l5 && check_min_heap l6 && check_min_heap l7
  && check_min_heap l8 && check_min_heap l9 && check_min_heap l10
  && check_min_heap l11 && check_min_heap l12 && check_min_heap l13
  && check_min_heap l14

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:30:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_min_heap (arr : int list) : bool =
  if List.length arr <= 1 then
    true
  else if List.hd arr > fst (List.tl arr) then
    false
  else
    check_min_heap (List.tl arr)

// Test cases
let test_inputs = [
  [3; 2; 1];
  [1; 2; 3];
  [1; 1; 2];
  [2; 1];
  [2; 1; 2];
  [5; 6; 7; 3; 4; 1];
  [1; 2];
  [1; 2; 3];
  [3; 2; 4];
  [3; 2; 4; 1];
  [3; 3; 4];
  [4; 3; 2; 1];
]

let test () =
  let rec check_tests (inputs : int list list) : bool =
    if inputs = [] then
      true
    else
      check_min_heap (List.hd inputs) && check_tests (List.tl inputs)
  in
  check_tests test_inputs

let _ =
  assert (test ())

