let rec check_min_heap (arr : int list) : bool =
match arr with
| [] -> true
| h :: t ->
  let n = List.length arr in
  let child = (n - 1) / 2 in
  if h > List.nth arr child then false
  else (
    let left = 2 * (child + 1) - 1 in
    let right = 2 * (child + 1) in
    if left >= n || right >= n then true
    else
      let c1 = List.nth arr left in
      let c2 = List.nth arr right in
      if c1 <= c2 then (
        if check_min_heap (List.tl arr) then true
        else false
      ) else (
        if check_min_heap (List.tl arr) then true
        else false
      )
  )


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
