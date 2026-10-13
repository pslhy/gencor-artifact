
let rec pancake_sort (nums : int list) : int list =
  let rec flip (nums : int list) (k : int) : int list =
    let rec reverse nums i j =
      if i < j then
        reverse (List.rev (List.split (List.split nums i)(j))) (i + 1)(j - 1)
      else
        nums
    in
    reverse nums 0 k
  in
  let rec find_max_index nums n =
    if n=1 then 0 else
      let max_rest = find_max_index nums (n-1) in
      if nums.(max_rest) > nums.(n-1) then max_rest else n-1
  in
  let rec sort_rec nums n =
    if n=1 then nums else
      let max_index = find_max_index nums n in
      if max_index + 1 <> n then begin
        nums <- flip nums max_index + 1;
        flip nums n
      end;
      sort_rec nums (n-1)
  in
  sort_rec nums (List.length nums)



let nums = [1;5;3;2;4]
let result = pancake_sort nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
