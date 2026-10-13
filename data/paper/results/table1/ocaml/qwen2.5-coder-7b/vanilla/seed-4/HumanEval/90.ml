let rec next_smallest (lst : int list) : int option = 
  let rec find_min (lst : int list) (min1 : int option) (min2 : int option) : int option =
    match lst with
    | [] -> (match min2 with None -> Some None | Some x -> Some x)
    | x :: xs ->
      let new_min1 = match min1 with
        | None -> Some x
        | Some y -> if x < y then Some x else Some y
      in
      let new_min2 = match min1, min2, x with
        | Some y1, Some y2, x when y1 = y2 && x > y1 -> Some x
        | Some y1, Some y2, x when x < y2 -> Some y1
        | _ -> min2
      in
      find_min xs new_min1 new_min2
  in
  find_min lst None None


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list of integers. *)
(*     Write a function next_smallest() that returns the 2nd smallest element of the list. *)
(*     Return None if there is no such element. *)
(*     >>> next_smallest [1; 2; 3; 4; 5] *)
(*     Some(2) *)
(*     >>> next_smallest [5; 1; 4; 3; 2] *)
(*     Some(2) *)
(*     >>> next_smallest [] *)
(*     Some(None) *)
(*     >>> next_smallest [1; 1] *)
(*     Some(None) *)
