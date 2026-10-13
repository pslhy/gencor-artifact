(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the intersection of two lists. *)
let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list =
  match array_nums1 with
  | [] -> []
  | head :: tail -> if List.mem head array_nums2 then head :: intersection array_nums tail array_nums2
    else intersection array_nums tail array_nums2

let () =
  assert (intersection_array [1; 2] [1; 3] = [1; 2; 3])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:63: Unbound value "intersection" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list =
  match array_nums1 with
  | [] -> []
  | head :: tail -> if List.mem head array_nums2 then head :: intersection array_nums1 tail array_nums2
    else intersection array_nums1 tail array_nums2

let () =
  let array_nums1 = [| 1; 2; 3; 4; 5 |] in
  let array_nums2 = [| 3; 4; 5; 6; 7 |] in
  let expected = [3; 4; 5] in
  assert (intersection_array array_nums1 array_nums2 = expected)
 
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:63: Unbound value "intersection" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec intersection_array (array_nums1 : int list) (array_nums2 : int list) : int list =
  match array_nums1 with
  | [] -> []
  | head :: tail -> if List.mem head array_nums2 then head :: intersection_array tail array_nums2
    else intersection_array tail array_nums2

let () =
  let array_nums1 = [| 1; 2; 3; 4; 5 |] in
  let array_nums2 = [| 3; 4; 5; 6; 7 |] in
  let expected = [3; 4; 5] in
  assert (intersection_array array_nums1 array_nums2 = expected)
 
