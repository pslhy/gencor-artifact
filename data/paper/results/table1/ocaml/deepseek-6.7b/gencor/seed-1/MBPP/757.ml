
let rec count_reverse_pairs (test_list : string list) : int =
  let rec check_reverse (s1 : string) (s2 : string) : bool =
    if s1 = String.sub s2 0 (String.length s1) then 
      match String.length s1, String.length s2 with
      | 0, 0 -> true
      | 0, _ -> false
      | _, _ -> s1.[0] = s2.[String.length s2 - 1] && check_reverse (String.sub s1 1 (String.length s1 - 1)) (String.sub s2 0 (String.length s2 - 1))
    else false
  in
  let rec helper (tlist : string list) (plist : string list) (count : int) : int =
    match tlist with
    | [] -> count
    | hd::tl ->
      let count = count + (plist |> List.filter (check_reverse hd) |> List.length) in
      helper tl (plist @ [hd]) count
  in
  helper test_list [] 0
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
