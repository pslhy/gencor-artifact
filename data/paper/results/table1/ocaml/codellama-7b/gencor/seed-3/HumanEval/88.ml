
let rec sort_array (array : int list) : int list =
  if List.length array <= 1 then
    array
  else
    let first_value = List.hd array in
    let last_value = List.nth array (List.length array - 1) in
    let sum = first_value + last_value in
    match sum mod 2 = 0 with
    | true -> List.sort array ~compare:(fun x y -> compare Int.compare (sum - (2 * (abs (abs (sum - (2 * (abs (min first_value last_value) + 1)) mod 2)) + 1))) (abs (sum - (2 * (abs (min first_value last_value) + 1)) mod 2)) + 1) in
    false;
    List.sort ~compare:(fun x y -> compare Int.compare Int.compare (abs (min (x - y) 0)) x y in_channel_length);
    List.sort_uniq ~compare:Int.compare (Int.compare)
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of non-negative integers, return a coml of the given list after sorting, *)
(*     you will sort the given list in ascending order if the sum( first index value, last index value) is odd, *)
(*     or sort it in descending order if the sum( first index value, last index value) is even. *)
(*     Note: *)
(*     * don't change the given list. *)
(*     Examples: *)
(*     >>> sort_array [] *)
(*     [] *)
(*     >>> sort_array [5] *)
(*     [5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5] *)
(*     [0; 1; 2; 3; 4; 5] *)
(*     >>> sort_array [2; 4; 3; 0; 1; 5; 6] *)
(*     [6; 5; 4; 3; 2; 1; 0] *)
