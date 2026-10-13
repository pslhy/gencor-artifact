let rec add_elements (arr : int list) (k : int) : int =
match k with
| 0 -> 0
| _ ->
let counter = ref 0 in
let rec sub_add (arr : int list) (i : int) (acc : int) : int =
match i with
| _ when i < 0 -> acc
| _ ->
let x = List.nth arr i in
if x < 100 then incr counter;
let acc = acc + x in
sub_add arr (i - 1) acc
in
sub_add arr (i - 1) acc
in
if !counter <= 2 then add_elements arr (k - 1) else 0
in
add_elements arr k


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a non-empty list of integers arr and an integer k, return *)
(*     the sum of the elements with at most two digits from the first k elements of arr. *)
(*     Example: *)
(*     >>> add_elements [111; 21; 3; 4000; 5; 6; 7; 8; 9] 4 *)
(*     24 *)
(*     Constraints: *)
(*     1. 1 <= len(arr) <= 100 *)
(*     2. 1 <= k <= len(arr) *)
