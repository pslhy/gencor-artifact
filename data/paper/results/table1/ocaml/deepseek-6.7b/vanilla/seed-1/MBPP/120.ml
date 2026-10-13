let rec max_product_tuple (list1 :  (int * int) list) : int =
  match list1 with
  | [] -> 0
  | (x1, y1)::t -> 
      let rec pair_product_list (list2 : (int * int) list) : int list = 
        match list2 with 
        | [] -> []
        | (x2, y2)::t -> (abs(x1*x2 + y1*y2))::pair_product_list t
      in 
      let tmp = pair_product_list t in
      let max_in_tmp = List.fold_left max (abs(x1*y1)) tmp in
      max max_in_tmp (max_product_tuple t)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list. *)
