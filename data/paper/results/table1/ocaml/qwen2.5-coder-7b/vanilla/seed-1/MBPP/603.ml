let rec get_ludic (n : int) : int list = 
  let rec check (lst : int list) (num : int) : bool = 
    match lst with
    | [] -> true
    | x :: xs -> if x * num > n then true else check xs num
  in
  let filtered = List.filter (fun x -> check [(1; 2)] x) [1..n] in
  matched filtered [] 1

let rec matched (lst : int list) (acc : int list) (start : int) : int list =
  match lst with
  | [] -> acc
  | x :: xs when x >= start -> matched xs (x :: acc) (x + 1)
  | _ -> matched lst acc (start + 1)

let get_ludic n = get_ludic n |> List.rev


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
