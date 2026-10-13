
let rec sort_array (arr : int list) : int list = 
  let binary_sort x y = 
    let ones_x = List.length (List.filter ((=) 1) (List.map (fun b -> if b then 1 else 0) (Int.to_string x |> String.to_seq |> Array.of_seq |> Array.map (fun c -> int_of_char c = 49)))) in
    let ones_y = List.length (List.filter ((=) 1) (List.map (fun b -> if b then 1 else 0) (Int.to_string y |> String.to_seq |> Array.of_seq |> Array.map (fun c -> int_of_char c = 49)))) in
    if ones_x = ones_y then compare x y else Int.compare ones_x ones_y in
  List.sort binary_sort arr

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this Kata, you have to sort a list of non-negative integers according to *)
(*     number of ones in their binary representation in ascending order. *)
(*     For similar number of ones, sort based on decimal value. *)
(*     It must be implemented like this: *)
(*     >>> sort_array [1; 5; 2; 3; 4] *)
(*     [1; 2; 3; 4; 5] *)
(*     >>> sort_array [(-2); (-3); (-4); (-5); (-6)] *)
(*     [(-6); (-5); (-4); (-3); (-2)] *)
(*     >>> sort_array [1; 0; 2; 3; 4] *)
(*     [0; 1; 2; 3; 4] *)
