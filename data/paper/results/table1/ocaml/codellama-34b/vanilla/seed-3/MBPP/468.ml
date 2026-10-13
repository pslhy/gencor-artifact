let rec max_product (arr : int list) : int =
  if List.length arr <= 1 then
    raise (Invalid_argument "array length must be greater than 1")
  else
    let rec aux (arr : int list) (cnt : int) : int =
      match arr with
      | [] -> 1
      | hd :: tl ->
          if cnt = 0 then
            hd * aux tl (cnt + 1)
          else
            (hd * aux tl (cnt + 1) mod hd) mod hd
    in
      aux arr 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
