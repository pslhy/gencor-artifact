(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
let rec count_Substrings (s : string) : int =
  let len = String.length s in
  let rec count_substrings_helper (s : string) (i : int) (cnt : int) : int =
    if i = len then cnt
    else
      let num_substrings = (List.length (String.split_on_char '0' (String.sub s i (len - i)))) - 1 in
      let new_cnt =
        List.fold_left
          (fun cnt x -> if String.length x = String.length (String.trim x) && String.length (String.trim x) = String.to_seq x |> List.of_seq |> List.sum_by (fun c -> int_of_string (String.make 1 c)) then cnt + 1 else cnt)
          cnt (List.init num_substrings (fun x -> String.sub s i (i + x + 1))) in
      count_substrings_helper s (i + 1) new_cnt in
  count_substrings_helper s 0 0;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:145: Unbound value "List.sum_by" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Substrings (s : string) : int =
  let len = String.length s in
  let rec count_substrings_helper (s : string) (i : int) (cnt : int) : int =
    if i = len then cnt
    else
      let num_substrings = (List.length (String.split_on_char '0' (String.sub s i (len - i)))) - 1 in
      let new_cnt =
        List.fold_left
          (fun cnt x -> if String.length x = String.length (String.trim x) && String.length (String.trim x) = String.length (String.to_list x) then cnt + 1 else cnt)
          cnt (List.init num_substrings (fun x -> String.sub s i (i + x + 1))) in
      count_substrings_helper s (i + 1) new_cnt in
  count_substrings_helper s 0 0;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:126: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Substrings (s : string) : int =
  let len = String.length s in
  let rec count_substrings_helper (s : string) (i : int) (cnt : int) : int =
    if i = len then cnt
    else
      let num_substrings = (List.length (String.split_on_char '0' (String.sub s i (len - i)))) - 1 in
      let new_cnt =
        List.fold_left
          (fun cnt x -> if String.length x = String.length (String.trim x) && String.length (String.trim x) = String.length (String.to_seq x |> List.of_seq) then cnt + 1 else cnt)
          cnt (List.init num_substrings (fun x -> String.sub s i (i + x + 1))) in
      count_substrings_helper s (i + 1) new_cnt in
  count_substrings_helper s 0 0;;

