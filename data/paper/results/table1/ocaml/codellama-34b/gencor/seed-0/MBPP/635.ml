
let rec heap_sort (iterable : int list) : int list =
  let heap = Array.of_list iterable in
  let len = Array.length heap in
  let heap_sink (i : int) : unit =
    let go (i : int) : unit =
      let l = 2 * i in
      let r = 2 * i + 1 in
      let (smaller, child) :: int =
        if l <= len && heap.(l) <= heap.(r) then (l, heap.(l)) else (r, heap.(r))
        in
      if heap.(i) > heap.(l) && heap.(i) > heap.(r) then (
        heap.(i) <- heap.(l);
        heap.(l) <- heap.(r);
        heap_sort (i : int);
      )
  in
  for i = ((len - 1) / 2) downto 0 do
    heap_sort (i : int)
  done;
  Array.to_list heap

in heap_sort [1; 3; 2; 4; 5]

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
