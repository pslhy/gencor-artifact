let rec sort_array (arr : int list) : int list =
  match arr with
  | [] -> []
  | _ ->
    let rec aux (arr : int list) (len : int) (acc : int list) : int list =
      match arr with
      | [] -> acc
      | h :: t ->
        let ones = count_ones h in
        aux t (len - 1) (if ones < len then h :: acc else acc)
    in
    List.rev (aux arr (List.length arr) [])

and count_ones (n : int) : int =
  let rec aux (n : int) (count : int) : int =
    if n = 0 then count else aux (n / 2) (count + 1)
  in
  aux n 0


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
