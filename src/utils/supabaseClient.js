import { createClient } from '@supabase/supabase-js';
const supabase = createClient('url', 'anon-key');
export default supabase;