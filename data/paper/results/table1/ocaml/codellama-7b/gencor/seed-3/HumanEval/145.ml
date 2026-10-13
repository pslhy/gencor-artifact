
let rec order_by_points (nums : int list) : int list =
  match nums with
  | [] ->
      []
  | n :: ns ->
      let n' =
        let rec sum_of_digits (n : int) : int =
          if n < 10 then
            n
          else
            n mod 10 + sum_of_digits (n / 10)
        in
        (sum_of_digits n, n)
      in
      let ns' = order_by_points ns in
      match List.rev_map (fun (x : int * int) -> x) ns' with
      | [] ->
          [n']
      | (x, _) :: _ when x <= n' ->
          n' :: ns'
      | _ :: ns'' ->
          n' :: ns''

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
