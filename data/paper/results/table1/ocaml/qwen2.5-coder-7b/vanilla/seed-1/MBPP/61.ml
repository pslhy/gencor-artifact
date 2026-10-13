let rec count_Substrings (s : string) : int = 
  let rec check_substrings start total_sum len count = 
    if start + len > String.length s then count
    else 
      let sum = total_sum + (Char.code (s.[start + len - 1]) - 48) in
      check_substrings start sum (len + 1) (if sum = len then count + 1 else count)
  in
  let rec count_all_substrings start total_sum count =
    if start = String.length s then count
    else 
      let count' = check_substrings start total_sum 1 0 in
      count_all_substrings (start + 1) total_sum (count + count')
  in
  count_all_substrings 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of substrings with the sum of digits equal to their length. *)
