
let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  let rec aux (acc : int list) (i : int) : int * int =
    match acc with
    | [] -> (0, 0)
    | h :: t ->
      if i = n then
        (h, i)
      else
        let (sum, len) = aux t (i + 1)
        in
          if h > sum then
            (h, i)
          else
            (sum, len)
  in
    snd (aux a 0)
;;

let rec repeat_list (a : 'a list) (n : int) : 'a list =
  match n with
  | 0 -> []
  | _ -> a @ (repeat_list a (n - 1))
;;

let find_largest_sub_array_sum (a : int list) (k : int) : int =
  let l = List.rev (repeat_list a k)
  in
    max_sub_array_sum_repeated l (List.length l) (k - 1)
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
