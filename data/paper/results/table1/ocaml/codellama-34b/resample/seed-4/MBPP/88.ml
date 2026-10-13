(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
let rec freq_count (list1 : int list) : (int * int) list = 
    let helper (list1 : int list) (list2 : int list) (count : int) =
        match list1 with
        | [] -> list2
        | hd :: tl -> helper list1 list2 (count + 1)
in
    helper list1 [] 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:23: Unbound value "helper" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec freq_count (list1 : int list) : (int * int) list =
  if List.length list1 = 0 then [] else
    let rec helper (list1 : int list) (list2 : int list) (count : int) =
      match list1 with
      | [] -> (count, List.hd list2) :: helper (List.tl list2) [] 0
      | hd :: tl ->
          if List.mem hd list2 then
            helper list1 list2 (count + 1)
          else
            helper tl (hd :: list2) (count + 1)
    in
    helper list1 [] 0

