
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
    let new_arr = (Random.int_in_range 0 n) :: gen_min_heaps (n - 1) in
    match List.sort compare new_arr with
    | exception Failure _ -> gen_min_heaps n
    | _ -> new_arr

let rec gen_random_array (n : int) : int list =
  if n <= 0 then
    []
  else
    n :: gen_random_array (n - 1)

let test_cases = [
  (gen_random_array 5, false);
  (gen_min_heaps 5, true);
  (gen_min_heaps 10000, true);
  (* test with duplicate elements *)
  (gen_min_heaps 10000 @ [10001; 10002], false);
]

let result = ref true

let _ =
  List.iter
    ~format_of_string:
      "Test case %d: Checking if %s is a valid min heap, Expected: %b"
      (fun (arr, expected) ->
        let result_ = check_min_heap arr in
        result := !result && (result_ = expected);
        Format.printf "%b\n" result_)
    test_cases

let _ =
  if !result then
    Format.printf "All test cases passed\n"
  else
    Format.printf "Test failed for at least one test case\n"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
