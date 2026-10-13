(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
let rec sort_sublists (list1 : string list list) : string list list =
  let rec sort_strings (list2 : string list) : string list =
    let rec sorted (list3 : string list) : bool =
      match list3 with
      | [] | [_] -> true
      | head :: [tail] -> head <= tail
      | head :: (neck :: tail) -> head <= neck && sorted (neck :: tail)
    in
    match list2 with
    | [] -> []
    | _ when sorted list2 -> list2
    | head :: tail ->
        let front = sort_strings (List.take_while (fun x -> x <= head) tail) in
        let back = sort_strings (List.drop_while (fun x -> x <= head) tail) in
        front @ [head] @ back
  in
  List.map (fun x -> sort_strings x) list1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:35: Unbound value "List.take_while" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_sublists (list1 : string list list) : string list list =
  let rec sort_strings (list2 : string list) : string list =
    let rec sorted (list3 : string list) : bool =
      match list3 with
      | [] | [_] -> true
      | head :: [tail] -> head <= tail
      | head :: (neck :: tail) -> head <= neck && sorted (neck :: tail)
    in
    match list2 with
    | [] -> []
    | _ when sorted list2 -> list2
    | _ ->
        let front = list2 in
        let back = [] in
        List.iter (fun x ->
          if x <= List.hd list2 then
            front <- x :: front
          else
            back <- x :: back
        ) list2;
        front @ back
  in
  List.map (fun x -> sort_strings x) list1

