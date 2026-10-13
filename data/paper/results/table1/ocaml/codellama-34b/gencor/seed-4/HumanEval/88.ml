
let rec sort_array (array : int list) : int list =
    let len = List.length array in
    let first_index = ref 0 in
    let last_index = ref (len - 1) in
    let sum = ref 0 in
    let list1 = ref [] in
    let list2 = ref [] in
    while !first_index < !last_index do
        sum := !sum + array.(!first_index) + array.(!last_index);
        first_index := !first_index + 1;
        last_index := !last_index - 1;
    done;
    if sum mod 2 = 1 then
        list1 := List.sort compare array;
    list2 := List.sort (fun x y -> compare y x) array;
    if sum mod 2 = 0 then
        list2
    else
        list1;;

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
