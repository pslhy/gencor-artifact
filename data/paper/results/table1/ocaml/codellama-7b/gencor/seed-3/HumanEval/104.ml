
let rec unique_digits (x : int list) : int list =
  match x with
  | [] -> []
  | x :: xs ->
    let x_digits = x mod 10 in
    if x_digits = 0 then unique_digits xs
    else x :: unique_digits xs

let test_unique_digits () =
  let assert_equal expected actual =
    if expected <> actual then print_string "FAILED\n"
    else print_string "PASSED\n"
  in
  let test_1 () =
    let result = unique_digits [15; 33; 1422; 1] in
    assert_equal [1; 15; 33] result
  in
  let test_2 () =
    let result = unique_digits [152; 323; 1422; 10] in
    assert_equal [] result
  in
  test_1 ();
  test_2 ()

let () = test_unique_digits ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
