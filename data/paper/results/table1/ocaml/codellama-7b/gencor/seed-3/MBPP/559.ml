
let rec max_sub_array_sum (a : int list) (size : int) : int =
  if size = 0 then
    0
  else if List.length a < size then
    max_sub_array_sum a (size - 1)
  else
    max (List.fold_left ( + ) 0 (List.rev (List.hd a)) @ (List.rev (a |> List.rev |> List.tl)))
       (max_sub_array_sum (List.tl a) size)
      
let rec max_sub_array_sum2 (a : int list) : int =
  match a with
    [] -> 0
  | x::xs -> max (x) (max_sub_array_sum2 xs)

let max_sub_array_sum3 (a : int list) : int =
  List.fold_left (fun max x -> max (max x 0)) 0 a

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
