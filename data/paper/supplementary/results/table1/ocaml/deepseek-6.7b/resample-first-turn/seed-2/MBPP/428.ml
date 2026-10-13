let rec shell_sort (my_list : int list) : int list =
  let rec shell_opt (i : int) (l : 'a list) : 'a list =
    if i > (List.length l) / 2 then l else l |> List.rev |> List.mapi (fun idx el -> if idx % i = 0 then List.nth_exn l (idx / i) else el) |> List.map (fun el -> el |> List.filter (fun x -> x < el)) |> List.map (fun el -> if List.length el = 0 then el else List.hd_exn el) |> List.sort in 
  
  let rec shell_loop (l_old : 'a list) (l_new : 'a list) (i : int) : 'a list =
    if l_old = l_new then l_new else shell_loop l_new (shell_opt i l_old) (i * 2) in
  
  shell_loop my_list (shell_opt ((List.length my_list) / 2) my_list) 1 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
