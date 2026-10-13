let rec heap_sort (iterable : int list) : int list =
  let rec heapify i n iterable =
    let largest = if iterable.(i) > iterable.(i*2) then i else i*2 in
    let largest = if n>(2*i+1) && iterable.(largest) < iterable.(2*i+1) then 2*i+1 else largest in
    if largest<>i then (
        let tmp = iterable.(i) in
        iterable.(i) <- iterable.(largest);
        iterable.(largest) <- tmp;
        heapify largest n iterable
    )
  in
  let rec build_heap n iterable =
    if n>1 then (
        build_heap (n-1) iterable;
        heapify (n-1) n iterable;
    )
  in
  let n = List.length iterable in
  let iterable_array = Array.of_list iterable in
  build_heap n iterable_array;
  let rec swap i iterable =
    if i<>0 then (
        let tmp = iterable.(0) in
        iterable.(0) <- iterable.(i);
        iterable.(i) <- tmp;
        heapify 0 i iterable;
        swap (i-1) iterable;
    )
  in
  swap (n-1) iterable_array;
  Array.to_list iterable_array;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
