
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_max_heap nums =
    let len = List.length nums in
    let rec heapify i =
      let l = 2 * i + 1 in
      let r = 2 * i + 2 in
      let largest = 
        if l < len && List.nth nums l > List.nth nums i then l
        else i
      in
      let largest = 
        if r < len && List.nth nums r > List.nth nums largest then r
        else largest
      in
      if largest <> i then
        let temp = List.nth nums i in
        List.nth-set_binary_mode_in
__POS__
__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS__ =__POS

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
