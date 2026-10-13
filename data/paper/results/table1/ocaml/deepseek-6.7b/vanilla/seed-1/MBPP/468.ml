let rec max_product (arr : int list) : int =
  match arr with
  | [] -> 0
  | hd :: tl ->
      let rec find_prod (lst : int list) (prod : int) (max_prod : int) : int =
        match lst with
        | [] -> max_prod
        | hd2 :: tl2 ->
            if hd2 > hd then
              if hd * hd2 > prod then
                find_prod tl2 (hd * hd2) (max_prod * hd * hd2)
              else
                find_prod tl2 (hd * hd2) max_prod
            else
              find_prod tl2 prod max_prod
      in
      max_product tl (max_prod (find_prod tl hd hd))
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
