let rec order_by_points (nums : int list) : int list =
  match nums with
  | [] -> []
  | (num : int) :: remainder ->
      let sum = num mod 10 in
      let remainder' = order_by_points remainder in
      match remainder' with
      | [] -> num :: []
      | h :: t -> if sum < h mod 10 then num :: h :: t else h :: num :: t

let order_by_points _ = () [;camlp4]


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
