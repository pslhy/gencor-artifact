let rec heap_sort (iterable : int list) : int list =
  let n = List.length iterable in
  let a = Array.of_list iterable in
  let rec sift_down (start : int) (m : int) : unit =
    let left = 2 * start + 1 in
    let right = 2 * start + 2 in
    let largest =
      if left < m && a.(left) > a.(start) then left
      else start in
    if right < m && a.(right) > a.(largest) then right
    else largest in
  let rec heapify (start : int) : unit =
    let m = n - 1 in
    if start < m then begin
      sift_down start m;
      heapify (start + 1)
    end in
  let rec sort (start : int) : unit =
    if start < n - 1 then begin
      heapify start;
      sort (start + 1)
    end in
  sort 0;
  List.init n (fun i -> a.(i))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
