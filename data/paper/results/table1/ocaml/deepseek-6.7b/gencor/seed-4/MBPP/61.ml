
let rec count_Substrings (s : string) : int =
  let len = String.length s in
  let rec count_substrings_helper (s : string) (i : int) (cnt : int) : int =
    if i = len then cnt
    else
      let num_substrings = (List.length (String.split_on_char '0' (String.sub s i (len - i)))) - 1 in
      let new_cnt =
        List.fold_left
          (fun cnt x -> if String.length x = String.length (String.trim x) && String.length (String.trim x) = String.to_seq x |> List.of_seq |> List.fold_left (fun sum ch -> sum + (Char.code ch - Char.code '0')) 0 then cnt + 1 else cnt)
          cnt (String.split_on_char '0' (String.sub s i (len - i)))
      in
      count_substrings_helper s (i + 1) (cnt + num_substrings)
  in
  count_substrings_helper s 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
