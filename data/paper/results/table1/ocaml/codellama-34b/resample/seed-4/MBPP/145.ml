(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
let rec max_Abs_Diff (arr : int list) : int = 
    (* base case: if list with only one element *)
    let rec sort (arr : int list) : int list = 
        (* base case: list with one element *)
        match arr with 
        | [] -> []
        | x::xs -> let smaller = sort xs in x :: smaller
        
    let rec diff (arr : int list) : int list =
        (* base case: list with one element *)
        match arr with
        | [x] -> x
        | x::xs -> x - (diff xs)
    sort arr |> diff |> List.map Abs |> List.max 


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:5: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_Abs_Diff (arr : int list) : int =
  (* base case: if list with only one element *)
  if List.length arr = 1 then begin
    None
  end else begin
    (* recursive case: find the maximum absolute difference *)
    let rec diff (arr : int list) : int list =
      (* base case: list with one element *)
      match arr with
      | [x] -> [x]
      | x::xs -> x - (diff xs)
    in
    match diff arr with
    | [] -> None
    | h::t -> Some (List.fold_left (fun acc x -> acc + abs x * abs x) 0 h :: t)
  end

