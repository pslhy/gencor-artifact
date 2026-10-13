let rec add_elements (arr : int list) (k : int) : int =
  match arr with
  | [] -> 0
  | h::t ->
     if h / 100 = 0 then h else
       match t with
       | [] -> 0
       | h1::t1 ->
          if h1 / 100 = 0 then h1 else
            match t1 with
            | [] -> 0
            | h2::t2 ->
               if h2 / 100 = 0 then h2 else 0
             + add_elements (h2::t2) k



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
