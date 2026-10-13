let rec trim_tuple (test_list : int list list) (k : int) : int list list =
  match test_list with
  | [] -> []
  | [x] -> [trim x k]
  | x :: y :: xs -> trim x k :: trim_tuple (y :: xs) k

and trim (test_list : int list) (k : int) : int list =
  let rec aux acc length = function
    | [] -> acc
    | x :: xs ->
        if length < k then
          aux (x :: acc) (length + 1) xs
        else
          aux acc (length + 1) xs
  in
  aux [] 0 test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
