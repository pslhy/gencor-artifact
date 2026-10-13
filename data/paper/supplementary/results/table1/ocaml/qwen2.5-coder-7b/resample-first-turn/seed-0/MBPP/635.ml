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
        heapify n (!largest) arr
      end
  in
  let build_heap arr = 
    let n = Array.length arr in
    for i = (n / 2) - 1 downto 0 do
      heapify n i arr
    done;
    arr
  in
  let extract_max arr = 
    let n = Array.length arr in
    let max = arr.(0) in
    arr.(0) <- arr.(n - 1);
    arr.(n - 1) <- max;
    arr
  in
  let rec sort arr = 
    let n = Array.length arr in
    if n > 1 then 
      begin
        build_heap arr;
        arr <- extract_max arr;
        sort (Array.sub arr 0 (n - 1))
      end
    else arr
  in
  List.map (fun x -> x) (sort (Array.of_list iterable) |> Array.to_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
