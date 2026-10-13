
let rec heap_sort (iterable : int list) : int list = 
  let heapify n i arr = 
    let largest = ref i in
    let l = 2 * i + 1 in
    let r = 2 * i + 2 in
    if l < n && arr.(l) > arr.(!largest) then largest := l;
    if r < n && arr.(r) > arr.(!largest) then largest := r;
    if !largest <> i then 
      begin
        let temp = arr.(i) in
        arr.(i) <- arr.(!largest);
        arr.(!largest) <- temp;
        heap_sort n !largest arr
      end
    in
  let build_heap arr n =
    for i = Int32.to_float (n / 2) - 1.0 downto 0.0 do
      heapify n (Int32.to_int i) arr
    done
  in
  let arr = Array.of_list iterable in
  let n = Array.length arr in
  build_heap arr n;
  for i = n - 1 downto 1 do
    let temp = arr.(0) in
    arr.(0) <- arr.(i);
    arr.(i) <- temp;
    heapify i 0 arr
  done;
  Array.to_list arr

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
